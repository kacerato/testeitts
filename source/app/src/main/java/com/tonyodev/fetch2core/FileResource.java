package com.tonyodev.fetch2core;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FileResource implements Parcelable, Serializable {
    public static final CREATOR CREATOR = new CREATOR(null);

    private long f83850id;
    private long length;

    @NotNull
    private String file = "";

    @NotNull
    private String name = "";

    @NotNull
    private Extras extras = Extras.CREATOR.getEmptyExtras();

    @NotNull
    private String md5 = "";

    public static final class CREATOR implements Parcelable.Creator<FileResource> {
        private CREATOR() {
        }

        public CREATOR(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public FileResource createFromParcel(@NotNull Parcel source) {
            M.q(source, "source");
            FileResource fileResource = new FileResource();
            fileResource.setId(source.readLong());
            String readString = source.readString();
            if (readString == null) {
                readString = "";
            }
            fileResource.setName(readString);
            fileResource.setLength(source.readLong());
            String readString2 = source.readString();
            if (readString2 == null) {
                readString2 = "";
            }
            fileResource.setFile(readString2);
            Serializable readSerializable = source.readSerializable();
            if (readSerializable != null) {
                fileResource.setExtras(new Extras((HashMap) readSerializable));
                String readString3 = source.readString();
                fileResource.setMd5(readString3 != null ? readString3 : "");
                return fileResource;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.HashMap<kotlin.String, kotlin.String> /* = java.util.HashMap<kotlin.String, kotlin.String> */");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        @NotNull
        public FileResource[] newArray(int i10) {
            return new FileResource[i10];
        }
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(FileResource.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.tonyodev.fetch2core.FileResource");
        }
        FileResource fileResource = (FileResource) obj;
        return this.f83850id == fileResource.f83850id && this.length == fileResource.length && M.g(this.file, fileResource.file) && M.g(this.name, fileResource.name) && M.g(this.extras, fileResource.extras) && M.g(this.md5, fileResource.md5);
    }

    @NotNull
    public final Extras getExtras() {
        return this.extras;
    }

    @NotNull
    public final String getFile() {
        return this.file;
    }

    public final long getId() {
        return this.f83850id;
    }

    public final long getLength() {
        return this.length;
    }

    @NotNull
    public final String getMd5() {
        return this.md5;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((((((((Long.valueOf(this.f83850id).hashCode() * 31) + Long.valueOf(this.length).hashCode()) * 31) + this.file.hashCode()) * 31) + this.name.hashCode()) * 31) + this.extras.hashCode()) * 31) + this.md5.hashCode();
    }

    public final void setExtras(@NotNull Extras value) {
        M.q(value, "value");
        this.extras = value.copy();
    }

    public final void setFile(@NotNull String str) {
        M.q(str, "<set-?>");
        this.file = str;
    }

    public final void setId(long j10) {
        this.f83850id = j10;
    }

    public final void setLength(long j10) {
        this.length = j10;
    }

    public final void setMd5(@NotNull String str) {
        M.q(str, "<set-?>");
        this.md5 = str;
    }

    public final void setName(@NotNull String str) {
        M.q(str, "<set-?>");
        this.name = str;
    }

    @NotNull
    public String toString() {
        return "FileResource(id=" + this.f83850id + ", length=" + this.length + ", file='" + this.file + "', name='" + this.name + "', extras='" + ((Object) this.extras) + "', md5='" + this.md5 + "')";
    }

    @Override
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        M.q(dest, "dest");
        dest.writeLong(this.f83850id);
        dest.writeString(this.name);
        dest.writeLong(this.length);
        dest.writeString(this.file);
        dest.writeSerializable(new HashMap(this.extras.getMap()));
        dest.writeString(this.md5);
    }
}
