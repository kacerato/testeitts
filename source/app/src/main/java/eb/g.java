package eb;

import java.lang.reflect.Field;

public class g {

    public String f85422a;

    public Field f85423b;

    public Field f85424c;

    public void a(Object object) {
        Field field = this.f85424c;
        if (field != null) {
            try {
                ((ec.d) field.get(object)).a();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            }
        }
    }

    public Field b() {
        return this.f85423b;
    }

    public String c() {
        return this.f85422a;
    }

    public Field d() {
        return this.f85424c;
    }

    public void e(Field field) {
        this.f85423b = field;
    }

    public void f(String name) {
        this.f85422a = name;
    }

    public void g(Field OFCBRL) {
        this.f85424c = OFCBRL;
    }
}
