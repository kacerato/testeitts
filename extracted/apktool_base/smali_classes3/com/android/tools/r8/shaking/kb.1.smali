.class public final synthetic Lcom/android/tools/r8/shaking/kb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/U0;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/kb;->b:Lcom/android/tools/r8/shaking/U0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/kb;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/kb;->b:Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/kb;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/shaking/G3;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/List;Lcom/android/tools/r8/shaking/G3;)Z

    move-result p1

    return p1
.end method
