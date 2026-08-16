.class public final Lcom/android/tools/r8/internal/Dr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Fr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/m8;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/m8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dr0;->a:Lcom/android/tools/r8/internal/m8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dr0;->a:Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/m8;->j(I)B

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dr0;->a:Lcom/android/tools/r8/internal/m8;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v0

    return v0
.end method
