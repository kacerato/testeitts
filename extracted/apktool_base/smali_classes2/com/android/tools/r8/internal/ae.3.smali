.class public final Lcom/android/tools/r8/internal/ae;
.super Ljava/lang/IndexOutOfBoundsException;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "Class too large: "

    invoke-static {v0, p2}, Lcom/android/tools/r8/internal/Ee0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/ae;->b:Ljava/lang/String;

    iput p1, p0, Lcom/android/tools/r8/internal/ae;->c:I

    return-void
.end method
