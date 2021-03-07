# Section 08

- The @Autowired annotation tells to Spring that he needs to inject the parameter in the constructor automatically.
- If the class who uses the @Autowired on the constructor has only one of it, the annotation is opcional.
- It can also be used on setters and methods, to fullfill the dependecies.
- The is also another type o dependecy injection called field injection, when you set the annotation directly on the private attribute. This is called Java Reflection.

So, basically we have 3 types of Dependency Injection:
1. Constructor injection;
2. Setter injection;
3. Field injection;

When there is more than 1 class using an interface, spring must know which one he needs to use in @Autowiring annotations. 
To do so, another Spring annotation is needed: Qualifier(). Being necessary pass as parameter the instance of the class that will be used on this specific @Autowiring.

# Section 09
- Use the Scope annotation to set the scope of the bean;
- By default, the scope is always Singleton, that means that all instances aim to the same memory allocation;
- That means that, even if there two instances of the same objects, they point to the same memory location;
- On the other hand, the scope Prototype create different places of the memory to allocate each instance of the same class;
- Also, its possible to create the annotations to create and destroy methods, there are:
-- PostConstruct;
-- PreDestroy;
- For prototype scoped beans, Spring does not call PreDestroy method!
