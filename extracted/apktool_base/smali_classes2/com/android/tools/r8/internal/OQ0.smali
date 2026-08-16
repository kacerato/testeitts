.class public final synthetic Lcom/android/tools/r8/internal/OQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/P60;

.field public final synthetic b:Lcom/android/tools/r8/internal/u70;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/P60;Lcom/android/tools/r8/internal/u70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/OQ0;->a:Lcom/android/tools/r8/internal/P60;

    iput-object p2, p0, Lcom/android/tools/r8/internal/OQ0;->b:Lcom/android/tools/r8/internal/u70;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/OQ0;->a:Lcom/android/tools/r8/internal/P60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/OQ0;->b:Lcom/android/tools/r8/internal/u70;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/P60;->a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
