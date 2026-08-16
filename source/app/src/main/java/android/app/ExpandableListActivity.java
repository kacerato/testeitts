package android.app;

import android.os.Bundle;
import android.view.ContextMenu;
import android.view.View;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/app/ExpandableListActivity.class
 */
public class ExpandableListActivity extends Activity implements View.OnCreateContextMenuListener, ExpandableListView.OnChildClickListener, ExpandableListView.OnGroupCollapseListener, ExpandableListView.OnGroupExpandListener {
    public ExpandableListActivity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCreateContextMenu(ContextMenu menu, View v10, ContextMenu.ContextMenuInfo menuInfo) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onChildClick(ExpandableListView parent, View v10, int groupPosition, int childPosition, long id2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onGroupCollapse(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onGroupExpand(int groupPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Bundle state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onContentChanged() {
        throw new RuntimeException("Stub!");
    }

    public void setListAdapter(ExpandableListAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    public ExpandableListView getExpandableListView() {
        throw new RuntimeException("Stub!");
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        throw new RuntimeException("Stub!");
    }

    public long getSelectedId() {
        throw new RuntimeException("Stub!");
    }

    public long getSelectedPosition() {
        throw new RuntimeException("Stub!");
    }

    public boolean setSelectedChild(int groupPosition, int childPosition, boolean shouldExpandGroup) {
        throw new RuntimeException("Stub!");
    }

    public void setSelectedGroup(int groupPosition) {
        throw new RuntimeException("Stub!");
    }
}
