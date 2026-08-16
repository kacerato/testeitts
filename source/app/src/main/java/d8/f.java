package d8;

import android.os.AsyncTask;

public class f extends AsyncTask<String, Integer, String> {
    @Override
    public String doInBackground(String... javaFiles) {
        int length = javaFiles.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str = javaFiles[i10];
            publishProgress(Integer.valueOf((int) ((i10 / length) * 100.0f)));
        }
        return "";
    }

    public void b(Long result) {
    }

    @Override
    public void onProgressUpdate(Integer... progress) {
    }
}
