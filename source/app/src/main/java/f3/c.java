package F3;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine2.R;
import e7.AbstractC13043b;

public class c extends AbstractC13043b {

    public TextView f6497b;

    public TextView f6498c;

    public ImageView f6499d;

    public View f6500e;

    public c(View viewBinding) {
        super(viewBinding);
        this.f6497b = (TextView) this.itemView.findViewById(R.id.tittle);
        this.f6498c = (TextView) this.itemView.findViewById(R.id.desc);
        this.f6499d = (ImageView) this.itemView.findViewById(R.id.icon);
        this.f6500e = this.itemView.findViewById(R.id.menu);
    }

    @Override
    public void b(View root) {
    }
}
