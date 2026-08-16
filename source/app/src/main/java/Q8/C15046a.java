package q8;

import com.google.gson.JsonSyntaxException;
import com.itsmagic.engine.Core.Components.JCompiler.Libs.JLib;
import com.itsmagic.engine.Core.Components.JCompiler.Libs.SerializedLibsClass;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.Collections;
import java.util.List;

public class C15046a {

    public final List<JLib> f106021a = Collections.synchronizedList(new SteppedArrayList());

    public void a(JLib lib) {
        synchronized (this.f106021a) {
            this.f106021a.add(lib);
        }
    }

    public void b() {
        synchronized (this.f106021a) {
            this.f106021a.clear();
        }
    }

    public void c(String json) {
        List<JLib> list;
        synchronized (this.f106021a) {
            this.f106021a.clear();
            if (json != null && !json.isEmpty()) {
                try {
                    SerializedLibsClass serializedLibsClass = (SerializedLibsClass) X7.a.m().fromJson(json, SerializedLibsClass.class);
                    if (serializedLibsClass != null && (list = serializedLibsClass.libs) != null) {
                        this.f106021a.addAll(list);
                    }
                } catch (JsonSyntaxException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public JLib d(int idx) {
        JLib jLib;
        synchronized (this.f106021a) {
            jLib = this.f106021a.get(idx);
        }
        return jLib;
    }

    public int e() {
        int size;
        synchronized (this.f106021a) {
            size = this.f106021a.size();
        }
        return size;
    }

    public String f() {
        String json;
        synchronized (this.f106021a) {
            SerializedLibsClass serializedLibsClass = new SerializedLibsClass();
            serializedLibsClass.libs = new SteppedArrayList(this.f106021a);
            json = X7.a.m().toJson(serializedLibsClass);
        }
        return json;
    }
}
