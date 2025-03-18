def extract_tags(str)
  str.scan(/<\/?([a-z]+)>/).flatten
end

def validate_tags(tags)
  stack = []
  tags.each do |tag|
    return tag if unmatched_tag?(tag, tags)

    if matching_tag?(stack, tag)
      stack.pop
    else
      stack.push(tag)
    end
  end

  stack.empty? ? "true" : stack.first 
end

def unmatched_tag?(tag, tags)
  tags.count(tag).odd?
end

def matching_tag?(stack, tag)
 !stack.empty? && stack.last == tag
end

# keep this function call here
def StringChallenge(str)
  puts "\n--- NEW TEST CASE ---"
  tags = extract_tags(str)
  result = validate_tags(tags)
  puts "Final output for input: #{str} => #{result}"  # Debugging output
  result
end

# **Test Cases**
test_cases = [
  # ✅ Correctly nested, should return "true"
  "<div><b><p>hello world</p></b></div>",  # true

  # ❌ Incorrectly ordered, should return "div"
  "<div><b></div></b>",                    # div

  # ❌ Missing a closing tag, should return "b"
  "<div><b>Hello</div>",                    # b

  # ✅ No HTML tags, should return "" (empty string)
  "Hello World",                             # ""

  # ✅ Handles self-closing tags properly, should return "true"
  "<div><img src='test.jpg' /><b>Bold</b></div>", # true

  # ❌ Mismatched opening and closing tags, should return "div"
  "<div><p><i>Text</div></p></i>",          # div

  # ✅ Whitespace handling, should return "true"
  "   <div>  <p>Test</p>   </div>  ",        # true

  # ❌ Unmatched duplicate tags, should return "b"
  "<div><b><b></b></div>",                  # b

  # ✅ Handles attributes inside tags, should return "true"
  "<div class='container'><p id='para'>Text</p></div>", # true

  # ❌ Extra closing tag, should return "p"
  "<div><p>Text</p></p></div>",             # p

  # ✅ Nested self-closing tag, should return "true"
  "<div><img/><p>Test</p></div>",           # true
]

# **Run tests**
test_cases.each do |test|
  puts "Input: #{test} => Output: #{StringChallenge(test)}"
end