package j7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.itsmagic.engine2.R;
import l7.C14056a;

public class C13810a extends b {
    public C13810a() {
        super("@@AD@@", null);
    }

    @Override
    public void A(Context context, C14056a viewHolder) {
    }

    @Override
    public int k() {
        return 1;
    }

    @Override
    public C14056a z(Context context, ViewGroup parent, LayoutInflater layoutInflater) {
        return new C14056a(layoutInflater.inflate(R.layout.file_explorer_content_view_item_ad, parent, false));
    }
}
