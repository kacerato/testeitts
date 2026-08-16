package M6;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class c extends AbstractC13043b {

    public TextView f14588b;

    public ImageView f14589c;

    public View f14590d;

    public ImageView f14591e;

    public c(View viewBinding) {
        super(viewBinding);
        this.f14588b = (TextView) viewBinding.findViewById(R.id.title);
        this.f14589c = (ImageView) viewBinding.findViewById(R.id.imageView38);
        this.f14590d = viewBinding.findViewById(R.id.backgroundColor);
        this.f14591e = (ImageView) viewBinding.findViewById(R.id.info);
    }

    @Override
    public void b(View root) {
    }
}
