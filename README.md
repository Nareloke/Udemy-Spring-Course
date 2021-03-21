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

# Section 10
- Ways of Configuring Spring Container  
1. Full XML Config;  
2. XML Component Scan;  
3. Java Configuration Class.  

# Secion 16
- Validating Number Ranges and Regular Expressions:  
@NotNull = The corresponding field can't be Null. The param 'message' is the message that will be send.  
@Size = The size of the corresponding field. 'min', to the minimum ammount of chars.  
@Min and @Max = Similar to the @Size  
@Pattern = Used to create regular expressions. 'regexp' is the param that will receive the regular expression.   

# Section 17
- Creating Custom Validations
@Constraint = 'validateBy'is the param the receive the class responsible to validate the annotations' business rule.  
@Target = Annotation to set where the annotation can be used.  
@Retention = When the annotation will occur.  

# Section 20
- Java Annotations
@Entity - This annotation mark the class as an entity table  
@Table - Receive an attribute 'name' that references the table name  

# Section 21
- Hibernated CRUD
1. .save() = save the object passed as parameter from the table  
2. To update is only necessary to commit the session after make the modification  
3. .delete() = delete the object passed as parameter from the table
