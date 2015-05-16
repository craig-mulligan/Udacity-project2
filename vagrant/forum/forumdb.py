#
# Database access functions for the web forum.
# 
import psycopg2
import bleach

## Get posts from database.
def GetAllPosts():
  db = psycopg2.connect("dbname=forum")
  c = db.cursor()
  c.execute("SELECT time, content from posts ORDER BY time DESC")
  posts = ({'content': str(row[1]), 'time': str(row[0])} for row in c.fetchall())
  bleach.clean(posts)
  db.close()
  return posts


## Add a post to the database.
def AddPost(content):
  db = psycopg2.connect("dbname=forum")
  c = db.cursor()
  c.execute("INSERT INTO posts (content) VALUES ('%s')" % (content,))
  db.commit()
  db.close()

def clean_up():
  db = psycopg2.connect("dbname=forum")
  c = db.cursor()
  c.execute("DELETE FROM posts WHERE content like '%cheese%'")
  db.commit()
  db.close()

clean_up()

def AddPost(content):
  db = psycopg2.connect("dbname=mydb")
  c = db.cursor()
  c.execute("INSERT INTO fishies (name) VALUES ('%s')" % (name,))
  db.commit()
  db.close()