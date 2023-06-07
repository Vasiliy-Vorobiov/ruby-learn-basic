# https://medium.com/@dljerome/design-patterns-in-ruby-observer-a6e8fe2e5c0a

###########################################
# THE OBSERVER PATTERN: AN INTRODUCTION
###########################################

# The 'subject' in the Observer pattern
# is responsible for adding (attaching)
# and removing (detaching) a list of
# 'observers'. The 'subject' should not know
# the class of an 'observer'. The 'subject'
# is responsible for notifying its 'observers'
# when the 'subject' changes.
#
# Traditionally, this is done using a method
# called 'notify' which calls a method called
# 'update' on each observer attached to the
# 'subject'.

###########################################
# THE OBSERVER PATTERN: AN EXAMPLE
###########################################

# We've defined a Subject class, which acts
# as the 'subject' in our example of the
# Observer pattern. It is responsible for
# keeping a list of it's observers, though
# it shouldn't know what those observers are.
# The simplest 'subject' in an Observer
# pattern implementation should attach,
# detach, and notify a list of observers.
# All 3 of those operations (attach, detach,
# notify) are defined and detailed below.
class Subject
  # This attribute is added so that we can
  # change the attribute in our example,
  # thus giving us a reason to notify
  # the observers attached to the subject.
  attr_accessor :name

  def initialize
    @observers = []
  end

  # the 'attach_observer' method pushes
  # an observer into the observers
  # array, which the subject maintains.
  def attach_observer(observer)
    @observers.push observer
  end

  # the 'detach_observer' method removes
  # an observer from the observers
  # array, which the subject maintains.
  def detach_observer(observer)
    @observers.remove observer
  end

  # the 'notify_observers' method is where
  # the magic happens. It will notify
  # all of the observer that an update
  # has occured. Each observer presumably
  # shares an Observer interface of some
  # kind. In our case, we're sticking with
  # the most basic and traditional method
  # within the Observer pattern tradition:
  # 'update'.
  def notify_observers
    @observers.each { |observer| observer.update(self) }
  end
end

# The 'observers' must all adhere to the same
# interface. Multiple observer of different class
# types can observe the same subject with ease.
#
# What you choose to do with the information that
# has been broadcast to an observer is up to you.
#
# Btw: The subject is a publisher and an observer
# is a subscriber. "Publish/Subscribe" is an alias
# for "Subject/Observer", which is the Observer
# pattern through and through.
class Observer
  def update(_changed_subject)
    puts 'The subject has changed.'
  end
end

###########################################
# THE OBSERVER PATTERN: IN USE
###########################################

# First, we'll create two observers and
# our subject.
observer_a = Observer.new
observer_b = Observer.new
subject = Subject.new

# Let's give the subject a name
subject.name = 'Anakin Skywalker'

# Next, we'll attach the two observers
# to the subject.
subject.attach_observer(observer_a)
subject.attach_observer(observer_b)

# Then, we'll change the state of the
# subject.
subject.name = 'Obi Wan Kenobi'

# Finally, we'll notify the observers
# that some change has occured.
subject.notify_observers

# You can use your imagination here.
# What the observers do with the information
# that the subject has changed is entirely
# up to your disgression as the designer
# of your program.
