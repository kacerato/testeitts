.class public final Lcom/android/tools/r8/internal/Rz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/XQ;

.field public final b:Lcom/android/tools/r8/internal/XQ;

.field public final c:Lcom/android/tools/r8/internal/XQ;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Lcom/android/tools/r8/internal/Rz;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rz;->a:Lcom/android/tools/r8/internal/XQ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Rz;->b:Lcom/android/tools/r8/internal/XQ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Rz;->c:Lcom/android/tools/r8/internal/XQ;

    iput p4, p0, Lcom/android/tools/r8/internal/Rz;->d:I

    iput-object p5, p0, Lcom/android/tools/r8/internal/Rz;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Rz;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/Rz;
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Rz;->a(Lcom/android/tools/r8/internal/Rz;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;)Lcom/android/tools/r8/internal/Rz;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rz;->a:Lcom/android/tools/r8/internal/XQ;

    iget v1, v2, Lcom/android/tools/r8/internal/XQ;->e:I

    iget-object v5, p0, Lcom/android/tools/r8/internal/Rz;->b:Lcom/android/tools/r8/internal/XQ;

    iget v3, v5, Lcom/android/tools/r8/internal/XQ;->e:I

    iget v4, p1, Lcom/android/tools/r8/internal/XQ;->e:I

    if-nez p2, :cond_1

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v6, p2, Lcom/android/tools/r8/internal/XQ;->e:I

    :goto_0
    if-ge v4, v3, :cond_6

    if-gt v6, v1, :cond_2

    goto :goto_1

    :cond_2
    if-gt v4, v1, :cond_4

    if-lt v6, v3, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Rz;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Rz;->c:Lcom/android/tools/r8/internal/XQ;

    iget v7, p0, Lcom/android/tools/r8/internal/Rz;->d:I

    iget-object v8, p0, Lcom/android/tools/r8/internal/Rz;->e:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Rz;-><init>(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;ILjava/lang/String;)V

    iput-object v0, p1, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    return-object p1

    :cond_4
    if-lt v6, v3, :cond_5

    new-instance p2, Lcom/android/tools/r8/internal/Rz;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Rz;->c:Lcom/android/tools/r8/internal/XQ;

    iget v5, p0, Lcom/android/tools/r8/internal/Rz;->d:I

    iget-object v6, p0, Lcom/android/tools/r8/internal/Rz;->e:Ljava/lang/String;

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Rz;-><init>(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;ILjava/lang/String;)V

    iput-object v0, p2, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    return-object p2

    :cond_5
    new-instance v9, Lcom/android/tools/r8/internal/Rz;

    iget-object v10, p0, Lcom/android/tools/r8/internal/Rz;->c:Lcom/android/tools/r8/internal/XQ;

    iget v11, p0, Lcom/android/tools/r8/internal/Rz;->d:I

    iget-object v12, p0, Lcom/android/tools/r8/internal/Rz;->e:Ljava/lang/String;

    move-object v3, v9

    move-object v4, p2

    move-object v6, v10

    move v7, v11

    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/internal/Rz;-><init>(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;ILjava/lang/String;)V

    iput-object v0, v9, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    iput-object v9, p0, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    new-instance p0, Lcom/android/tools/r8/internal/Rz;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/Rz;-><init>(Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;Lcom/android/tools/r8/internal/XQ;ILjava/lang/String;)V

    iput-object v9, p0, Lcom/android/tools/r8/internal/Rz;->f:Lcom/android/tools/r8/internal/Rz;

    :cond_6
    :goto_1
    return-object p0
.end method
