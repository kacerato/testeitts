.class public final synthetic Lcom/android/tools/r8/internal/et1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sp0;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/sp0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/et1;->b:Lcom/android/tools/r8/internal/sp0;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/et1;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/et1;->b:Lcom/android/tools/r8/internal/sp0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/et1;->c:Z

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/sp0;->a(ZLcom/android/tools/r8/internal/xw0;)V

    return-void
.end method
