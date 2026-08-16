.class public final synthetic Lcom/android/tools/r8/P3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/m;

.field public final synthetic c:Lcom/android/tools/r8/l;

.field public final synthetic d:Lcom/android/tools/r8/references/MethodReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/m;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/P3;->b:Lcom/android/tools/r8/m;

    iput-object p2, p0, Lcom/android/tools/r8/P3;->c:Lcom/android/tools/r8/l;

    iput-object p3, p0, Lcom/android/tools/r8/P3;->d:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/P3;->b:Lcom/android/tools/r8/m;

    iget-object v1, p0, Lcom/android/tools/r8/P3;->c:Lcom/android/tools/r8/l;

    iget-object v2, p0, Lcom/android/tools/r8/P3;->d:Lcom/android/tools/r8/references/MethodReference;

    check-cast p1, Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p1

    return-object p1
.end method
