# Todo List Web Design Recipe (Level One)

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
> I want an application to keep my Todo list 
* To add tasks
* To list tasks
* To update tasks
* To delete tasks from list

## 2. Design the Data Model Class

_This class should store and manage the data the server will hold._
_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize
  end

  def list
  # Returns a list with tasks
  end

  def add(task)
  # task is a string
  # Returns nothing
  # Adds the task to the list
  end

  def get(index)
  # index is a number
  # Retuns a task at given index

  def delete(index)
  # Index is a number representing the task in the list
  # Returns nothing
  # Removes the task from the list
  end

  def update(index, new_task)
  # new_taskis string 
  # returns nothing
  # Replaces the task at given index with new_task text
  end
end

```

_Check it against these rules:_

> 1. Does it represent a collection (list or hash) of data?
> 2. Does it _at least_ have methods to:
>    1. List out all items in the resource
>    2. Create an item (C)
>    3. Get a single item (R)
>    4. Update an item (U)
>    5. Delete an item (D)
> 3. Does each method take only simple data types as arguments?  
>    Simple data types are: string, number, boolean.  
>    Methods can return lists, hashes & other objects, but not take them as
>    parameters.
> 
> Some of these rules will be relaxed later but will keep you safe for now.

## 3. Design the Web API (Requests)

_Design requests that perform each of the operations on your model class._
_Map them to the methods in your class._

```ruby
# EXAMPLE
todo_list = TodoList.new

# GET /todos
todo_list.list

# GET /todos/:id
todo_list.get(id)

# POST /todos
# With data: task = Walk the dog
todo_list.add(task)

# PATCH /todo/:id
# With data: task = Walk the cat
todo_list.update(id, task)

#DELETE /todo/:id
todo_list.remove(id)
```

> Remember:

> GET: Getting a single item or a list of items

> POST: Adding an item

> PATCH: Updating an item

> DELETE: Deleting an item

## 4. Create Examples

_Create examples of the requests and their responses in different scenarios._

```ruby
# EXAMPLE
# 1 List an empty todo list
Request: GET /todos
Response:
  'You do not have any tasks to do.'

# 2 Adding a task and listing out the tasks
Request: POST/todos
  With Data: task = Walk the dog
Response:
  'You have added a task'

Request: GET/todos
Response: 
  '1. Walk the dog'
  
# 3 Adding multiple tasks and listing out the tasks
Request: POST/todos
  With Data: task = Walk the dog
Request: POST/todos
  With Data: task = Walk the cat
Request: POST/todos
  With Data: task = Walk the frog

Request: GET/todos
Response: 
  """
  1. Walk the dog
  2. Walk the cat
  3. Walk the frog
  """

# 4 Adding multiple tasks deleting one and listing out the tasks
Request: POST/todos
  With Data: task = Walk the dog
Request: POST/todos
  With Data: task = Walk the cat
Request: POST/todos
  With Data: task = Walk the frog
Request: DELETE /todos/2
Response:
  'You have deleted a task'

Request: GET/todos
Response: 
  """
  1. Walk the dog
  2. Walk the frog
  """

# 5 Adding multiple tasks deleting one and listing out the tasks
Request: POST/todos
  With Data: task = Walk the dog
Request: POST/todos
  With Data: task = Walk the cat
Request: POST/todos
  With Data: task = Walk the frog
Request: PATCH /todos/2
  With Data: task = Walk the zebra
Response:
  'You have updated a task'

Request: GET/todos
Response: 
  """
  1. Walk the dog
  2. Walk the zebra
  3. Walk the frog
  """

# 6 Adding a task and listing that task individually
Request: POST/todos
  With Data: task = Walk the dog
Response:
  'You have added a task'

Request: GET/todos/1
Response: 
  'Walk the dog'
```



## 5. Translate the Examples to Web Tests

_Translate your examples to tests using `Rack::Test`_

```ruby
# EXAMPLE


```

## 6. Implement the Behaviour

_Follow this cycle:_

1. Add a web test in `/spec/web/` (RED)
2. Implement the behaviour in `app.rb`
3. Does it pass without data model changes? (GREEN) Then skip to step 6.
4. Otherwise, add a unit test for the data model to `/spec/unit` (RED)
5. Implement the behaviour in your data model class. (GREEN)
6. Apply any refactors to improve the structure of the code. (REFACTOR)  
   Run `rubocop` as part of this.
7. Go back to step 1.


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-one&prefill_File=recipe/recipe.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-one&prefill_File=recipe/recipe.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-one&prefill_File=recipe/recipe.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-one&prefill_File=recipe/recipe.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-starter-level-one&prefill_File=recipe/recipe.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
