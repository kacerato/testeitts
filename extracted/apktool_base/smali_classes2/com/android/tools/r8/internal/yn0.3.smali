.class public final Lcom/android/tools/r8/internal/yn0;
.super Lcom/android/tools/r8/internal/Cn0;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lcom/android/tools/r8/internal/zn0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/zn0;Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/yn0;->i:Lcom/android/tools/r8/internal/zn0;

    invoke-direct {p0, p2, p3}, Lcom/android/tools/r8/internal/Cn0;-><init>(Lcom/android/tools/r8/internal/En0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/yn0;->i:Lcom/android/tools/r8/internal/zn0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zn0;->a:Lcom/android/tools/r8/internal/Qb;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cn0;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/U60;->b(II)V

    :goto_0
    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Qb;->b(C)Z

    move-result v3

    if-eqz v3, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
