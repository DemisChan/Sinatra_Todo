RSpec.describe "Todo list Web Resource" do
  it "lists out empty todo list" do
    get "/todos"
    expect(last_response.body).to eq("You have nothing to do in your todo list.\n")
  end

  it "Adds the task and lists out the tasks" do
    post "/todos", task: "Walk the dog"
    expect(last_response.body).to eq("You have added a task.\n")
  
    get "/todos"
    expect(last_response.body).to eq "1. Walk the dog\n"
  end

  it "lists a specific todo that we request" do
    post "/todos", task: "Walk the dog"
    get "/todos/1"
    expect(last_response.body).to eq "Walk the dog\n"
  end

  it "lists a specific todo that we request" do
    post "/todos", task: "Walk the dog"
    post "/todos", task: "Walk the cat"
    get "/todos/2"
    expect(last_response.body).to eq "Walk the cat\n"
  end

  it " adds multiple tasks and lists out the tasks" do
    post "/todos", task: "Walk the dog"
    post "/todos", task: "Walk the cat"
    post "/todos", task: "Walk the frog"

    get "/todos"
    expect(last_response.body).to eq(
      "1. Walk the dog\n" +
      "2. Walk the cat\n" +
      "3. Walk the frog\n"
    )
  end
end
