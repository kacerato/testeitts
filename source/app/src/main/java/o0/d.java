package o0;

import android.view.View;
import java.util.List;

public interface d {

    public static final int f98411Q6 = -1;

    void a(g flexLine);

    void addView(View view);

    void addView(View view, int index);

    View b(int index);

    int c(int heightSpec, int padding, int childDimension);

    int d(View view);

    void e(View view, int index, int indexInFlexLine, g flexLine);

    View f(int index);

    int g(View view, int index, int indexInFlexLine);

    int getAlignContent();

    int getAlignItems();

    int getFlexDirection();

    int getFlexItemCount();

    List<g> getFlexLines();

    List<g> getFlexLinesInternal();

    int getFlexWrap();

    int getJustifyContent();

    int getLargestMainSize();

    int getMaxLine();

    int getPaddingBottom();

    int getPaddingEnd();

    int getPaddingLeft();

    int getPaddingRight();

    int getPaddingStart();

    int getPaddingTop();

    int getSumOfCrossSize();

    int h(int widthSpec, int padding, int childDimension);

    void i(int position, View view);

    boolean j();

    void removeAllViews();

    void removeViewAt(int index);

    void setAlignContent(int alignContent);

    void setAlignItems(int alignItems);

    void setFlexDirection(int flexDirection);

    void setFlexLines(List<g> flexLines);

    void setFlexWrap(int flexWrap);

    void setJustifyContent(int justifyContent);

    void setMaxLine(int maxLine);
}
