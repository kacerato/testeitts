.class public final Lcom/android/tools/r8/internal/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/android/tools/r8/ByteDataView;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/ByteDataView;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/h3;->c:Lcom/android/tools/r8/ByteDataView;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/h3;->d:Z

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/h3;->e:Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/h3;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/h3;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
