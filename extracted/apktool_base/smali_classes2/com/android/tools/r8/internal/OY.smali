.class public Lcom/android/tools/r8/internal/OY;
.super Lcom/android/tools/r8/internal/MY;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/MY;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/OY;->b:Ljava/lang/Object;

    iput p1, p0, Lcom/android/tools/r8/internal/OY;->c:I

    const-string p2, "count"

    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Le;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/OY;->c:I

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/OY;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/OY;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
