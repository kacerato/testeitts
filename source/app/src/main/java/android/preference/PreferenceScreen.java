package android.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/preference/PreferenceScreen.class
 */
public final class PreferenceScreen extends PreferenceGroup implements AdapterView.OnItemClickListener, DialogInterface.OnDismissListener {
    PreferenceScreen() {
        super((Context) null, (AttributeSet) null);
        throw new RuntimeException("Stub!");
    }

    public ListAdapter getRootAdapter() {
        throw new RuntimeException("Stub!");
    }

    protected ListAdapter onCreateRootAdapter() {
        throw new RuntimeException("Stub!");
    }

    public void bind(ListView listView) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onClick() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDismiss(DialogInterface dialog) {
        throw new RuntimeException("Stub!");
    }

    public Dialog getDialog() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onItemClick(AdapterView parent, View view, int position, long id2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected boolean isOnSameScreenAsChildren() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }
}
