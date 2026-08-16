package android.view.textclassifier;

import androidx.annotation.RecentlyNonNull;

public interface TextClassificationSessionFactory {
    @RecentlyNonNull
    TextClassifier createTextClassificationSession(@RecentlyNonNull TextClassificationContext textClassificationContext);
}
