package annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


@Target(ElementType.FIELD)//注解目标
@Retention(RetentionPolicy.RUNTIME)

public @interface Column {
	public String field();//字段名称
	public boolean primaryKey() default false;
	public String type() default "VARCHAR(80)";
	public boolean defaultNull() default true;


}
