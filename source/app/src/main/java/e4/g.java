package E4;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class g extends AbstractC13043b {

    public TextView f5466b;

    public TextView f5467c;

    public TextView f5468d;

    public TextView f5469e;

    public LinearLayout f5470f;

    public g(View viewBinding) {
        super(viewBinding);
        this.f5466b = (TextView) viewBinding.findViewById(R.id.className);
        this.f5467c = (TextView) viewBinding.findViewById(R.id.description);
        this.f5468d = (TextView) viewBinding.findViewById(R.id.description);
        this.f5469e = (TextView) viewBinding.findViewById(R.id.categoryIcon);
        this.f5470f = viewBinding.findViewById(R.id.categoryIcon).getParent() instanceof LinearLayout ? (LinearLayout) viewBinding.findViewById(R.id.categoryIcon).getParent() : null;
    }

    @Override
    public void b(View root) {
    }
}
