package java.lang;

import java.lang.module.Configuration;
import java.lang.module.ModuleReference;
import java.net.URI;

public class NamedPackage {
    private final String name;
    private final Module module;

    public NamedPackage(String pn2, Module module) {
        if (pn2.isEmpty() && module.isNamed()) {
            throw new InternalError("unnamed package in  " + ((Object) module));
        }
        this.name = pn2.intern();
        this.module = module;
    }

    public String packageName() {
        return this.name;
    }

    public Module module() {
        return this.module;
    }

    public URI location() {
        if (this.module.isNamed() && this.module.getLayer() != null) {
            Configuration cf2 = this.module.getLayer().configuration();
            ModuleReference mref = cf2.findModule(this.module.getName()).get().reference();
            return mref.location().orElse(null);
        }
        return null;
    }

    public static Package toPackage(String name, Module module) {
        return new Package(name, module);
    }
}
