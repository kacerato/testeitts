package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;

public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    private static final FontProviderHelper DEFAULT_FONTS_CONTRACT = new FontProviderHelper();

    public static class ExponentialBackoffRetryPolicy extends RetryPolicy {
        private long mRetryOrigin;
        private final long mTotalMs;

        public ExponentialBackoffRetryPolicy(long j10) {
            this.mTotalMs = j10;
        }

        @Override
        public long getRetryDelay() {
            if (this.mRetryOrigin == 0) {
                this.mRetryOrigin = SystemClock.uptimeMillis();
                return 0L;
            }
            long uptimeMillis = SystemClock.uptimeMillis() - this.mRetryOrigin;
            if (uptimeMillis > this.mTotalMs) {
                return -1L;
            }
            return Math.min(Math.max(uptimeMillis, 1000L), this.mTotalMs - uptimeMillis);
        }
    }

    public static class FontProviderHelper {
        public Typeface buildTypeface(Context context, FontsContractCompat.FontInfo fontInfo) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.buildTypeface(context, null, new FontsContractCompat.FontInfo[]{fontInfo});
        }

        public FontsContractCompat.FontFamilyResult fetchFonts(Context context, FontRequest fontRequest) throws PackageManager.NameNotFoundException {
            return FontsContractCompat.fetchFonts(context, null, fontRequest);
        }

        public void registerObserver(Context context, Uri uri, ContentObserver contentObserver) {
            context.getContentResolver().registerContentObserver(uri, false, contentObserver);
        }

        public void unregisterObserver(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    public static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        private static final String S_TRACE_BUILD_TYPEFACE = "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface";
        EmojiCompat.MetadataRepoLoaderCallback mCallback;
        private final Context mContext;
        private Executor mExecutor;
        private final FontProviderHelper mFontProviderHelper;
        private final Object mLock = new Object();
        private Handler mMainHandler;
        private Runnable mMainHandlerLoadCallback;
        private ThreadPoolExecutor mMyThreadPoolExecutor;
        private ContentObserver mObserver;
        private final FontRequest mRequest;
        private RetryPolicy mRetryPolicy;

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
            Preconditions.checkNotNull(context, "Context cannot be null");
            Preconditions.checkNotNull(fontRequest, "FontRequest cannot be null");
            this.mContext = context.getApplicationContext();
            this.mRequest = fontRequest;
            this.mFontProviderHelper = fontProviderHelper;
        }

        private void cleanUp() {
            synchronized (this.mLock) {
                try {
                    this.mCallback = null;
                    ContentObserver contentObserver = this.mObserver;
                    if (contentObserver != null) {
                        this.mFontProviderHelper.unregisterObserver(this.mContext, contentObserver);
                        this.mObserver = null;
                    }
                    Handler handler = this.mMainHandler;
                    if (handler != null) {
                        handler.removeCallbacks(this.mMainHandlerLoadCallback);
                    }
                    this.mMainHandler = null;
                    ThreadPoolExecutor threadPoolExecutor = this.mMyThreadPoolExecutor;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.mExecutor = null;
                    this.mMyThreadPoolExecutor = null;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        private FontsContractCompat.FontInfo retrieveFontInfo() {
            try {
                FontsContractCompat.FontFamilyResult fetchFonts = this.mFontProviderHelper.fetchFonts(this.mContext, this.mRequest);
                if (fetchFonts.getStatusCode() == 0) {
                    FontsContractCompat.FontInfo[] fonts = fetchFonts.getFonts();
                    if (fonts == null || fonts.length == 0) {
                        throw new RuntimeException("fetchFonts failed (empty result)");
                    }
                    return fonts[0];
                }
                throw new RuntimeException("fetchFonts failed (" + fetchFonts.getStatusCode() + ")");
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("provider not found", e10);
            }
        }

        private void scheduleRetry(Uri uri, long j10) {
            synchronized (this.mLock) {
                try {
                    Handler handler = this.mMainHandler;
                    if (handler == null) {
                        handler = ConcurrencyHelpers.mainHandlerAsync();
                        this.mMainHandler = handler;
                    }
                    if (this.mObserver == null) {
                        ContentObserver contentObserver = new ContentObserver(handler) {
                            @Override
                            public void onChange(boolean z10, Uri uri2) {
                                FontRequestMetadataLoader.this.loadInternal();
                            }
                        };
                        this.mObserver = contentObserver;
                        this.mFontProviderHelper.registerObserver(this.mContext, uri, contentObserver);
                    }
                    if (this.mMainHandlerLoadCallback == null) {
                        this.mMainHandlerLoadCallback = new Runnable() {
                            @Override
                            public final void run() {
                                FontRequestEmojiCompatConfig.FontRequestMetadataLoader.this.loadInternal();
                            }
                        };
                    }
                    handler.postDelayed(this.mMainHandlerLoadCallback, j10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void createMetadata() {
            synchronized (this.mLock) {
                try {
                    if (this.mCallback == null) {
                        return;
                    }
                    try {
                        FontsContractCompat.FontInfo retrieveFontInfo = retrieveFontInfo();
                        int resultCode = retrieveFontInfo.getResultCode();
                        if (resultCode == 2) {
                            synchronized (this.mLock) {
                                try {
                                    RetryPolicy retryPolicy = this.mRetryPolicy;
                                    if (retryPolicy != null) {
                                        long retryDelay = retryPolicy.getRetryDelay();
                                        if (retryDelay >= 0) {
                                            scheduleRetry(retrieveFontInfo.getUri(), retryDelay);
                                            return;
                                        }
                                    }
                                } finally {
                                }
                            }
                        }
                        if (resultCode != 0) {
                            throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + ")");
                        }
                        try {
                            TraceCompat.beginSection(S_TRACE_BUILD_TYPEFACE);
                            Typeface buildTypeface = this.mFontProviderHelper.buildTypeface(this.mContext, retrieveFontInfo);
                            ByteBuffer mmap = TypefaceCompatUtil.mmap(this.mContext, null, retrieveFontInfo.getUri());
                            if (mmap == null || buildTypeface == null) {
                                throw new RuntimeException("Unable to open file.");
                            }
                            MetadataRepo create = MetadataRepo.create(buildTypeface, mmap);
                            TraceCompat.endSection();
                            synchronized (this.mLock) {
                                try {
                                    EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback = this.mCallback;
                                    if (metadataRepoLoaderCallback != null) {
                                        metadataRepoLoaderCallback.onLoaded(create);
                                    }
                                } finally {
                                }
                            }
                            cleanUp();
                        } catch (Throwable th2) {
                            TraceCompat.endSection();
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        synchronized (this.mLock) {
                            try {
                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = this.mCallback;
                                if (metadataRepoLoaderCallback2 != null) {
                                    metadataRepoLoaderCallback2.onFailed(th3);
                                }
                                cleanUp();
                            } finally {
                            }
                        }
                    }
                } finally {
                }
            }
        }

        @Override
        public void load(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            Preconditions.checkNotNull(metadataRepoLoaderCallback, "LoaderCallback cannot be null");
            synchronized (this.mLock) {
                this.mCallback = metadataRepoLoaderCallback;
            }
            loadInternal();
        }

        public void loadInternal() {
            synchronized (this.mLock) {
                try {
                    if (this.mCallback == null) {
                        return;
                    }
                    if (this.mExecutor == null) {
                        ThreadPoolExecutor createBackgroundPriorityExecutor = ConcurrencyHelpers.createBackgroundPriorityExecutor("emojiCompat");
                        this.mMyThreadPoolExecutor = createBackgroundPriorityExecutor;
                        this.mExecutor = createBackgroundPriorityExecutor;
                    }
                    this.mExecutor.execute(new Runnable() {
                        @Override
                        public final void run() {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader.this.createMetadata();
                        }
                    });
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void setExecutor(Executor executor) {
            synchronized (this.mLock) {
                this.mExecutor = executor;
            }
        }

        public void setRetryPolicy(RetryPolicy retryPolicy) {
            synchronized (this.mLock) {
                this.mRetryPolicy = retryPolicy;
            }
        }
    }

    public static abstract class RetryPolicy {
        public abstract long getRetryDelay();
    }

    public FontRequestEmojiCompatConfig(Context context, FontRequest fontRequest) {
        super(new FontRequestMetadataLoader(context, fontRequest, DEFAULT_FONTS_CONTRACT));
    }

    @Deprecated
    public FontRequestEmojiCompatConfig setHandler(Handler handler) {
        if (handler == null) {
            return this;
        }
        setLoadingExecutor(ConcurrencyHelpers.convertHandlerToExecutor(handler));
        return this;
    }

    public FontRequestEmojiCompatConfig setLoadingExecutor(Executor executor) {
        ((FontRequestMetadataLoader) getMetadataRepoLoader()).setExecutor(executor);
        return this;
    }

    public FontRequestEmojiCompatConfig setRetryPolicy(RetryPolicy retryPolicy) {
        ((FontRequestMetadataLoader) getMetadataRepoLoader()).setRetryPolicy(retryPolicy);
        return this;
    }

    public FontRequestEmojiCompatConfig(Context context, FontRequest fontRequest, FontProviderHelper fontProviderHelper) {
        super(new FontRequestMetadataLoader(context, fontRequest, fontProviderHelper));
    }
}
