package v3;

import android.app.Activity;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class o {

    public List<k> f121194a = Collections.synchronizedList(new LinkedList());

    public o(Activity activity) {
    }

    public void a(k repeater) {
        if (!this.f121194a.contains(repeater)) {
            this.f121194a.add(repeater);
        }
        repeater.e();
    }

    public void b(k repeater) {
        repeater.i();
        this.f121194a.remove(repeater);
    }
}
