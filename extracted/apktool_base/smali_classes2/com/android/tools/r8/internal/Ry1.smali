.class public final synthetic Lcom/android/tools/r8/internal/Ry1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/f60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/f60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ry1;->b:Lcom/android/tools/r8/internal/f60;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ry1;->b:Lcom/android/tools/r8/internal/f60;

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/f60;)Z

    move-result p1

    return p1
.end method
