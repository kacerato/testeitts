.class public final synthetic Lcom/android/tools/r8/naming/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/A0;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/A0;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/W0;->b:Lcom/android/tools/r8/naming/A0;

    iput-object p2, p0, Lcom/android/tools/r8/naming/W0;->c:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/naming/W0;->b:Lcom/android/tools/r8/naming/A0;

    iget-object v1, p0, Lcom/android/tools/r8/naming/W0;->c:Ljava/util/function/Predicate;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/naming/A0;->a(Ljava/util/function/Predicate;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
