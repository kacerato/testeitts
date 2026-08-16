.class public final Lcom/android/tools/r8/c0;
.super Lcom/android/tools/r8/b0;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/b0;-><init>(Lcom/android/tools/r8/AndroidResourceInput;Lcom/android/tools/r8/internal/Ef0;)V

    iput-object p3, p0, Lcom/android/tools/r8/c0;->c:[B

    return-void
.end method


# virtual methods
.method public final getByteDataView()Lcom/android/tools/r8/ByteDataView;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/c0;->c:[B

    invoke-static {v0}, Lcom/android/tools/r8/ByteDataView;->of([B)Lcom/android/tools/r8/ByteDataView;

    move-result-object v0

    return-object v0
.end method
