package a7;

import android.view.View;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class C3588c extends AbstractC13043b {

    public TextView f31905b;

    public TextView f31906c;

    public View f31907d;

    public View f31908e;

    public C3588c(View viewBinding) {
        super(viewBinding);
    }

    @Override
    public void b(View root) {
        this.f31908e = root;
        this.f31905b = (TextView) root.findViewById(R.id.title);
        this.f31906c = (TextView) root.findViewById(R.id.date);
        this.f31907d = root.findViewById(R.id.options);
    }
}
