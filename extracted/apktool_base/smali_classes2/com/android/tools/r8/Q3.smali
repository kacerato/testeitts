.class public final synthetic Lcom/android/tools/r8/Q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/m;

.field public final synthetic c:Lcom/android/tools/r8/l;

.field public final synthetic d:Lcom/android/tools/r8/references/MethodReference;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/m;Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/Q3;->b:Lcom/android/tools/r8/m;

    iput-object p2, p0, Lcom/android/tools/r8/Q3;->c:Lcom/android/tools/r8/l;

    iput-object p3, p0, Lcom/android/tools/r8/Q3;->d:Lcom/android/tools/r8/references/MethodReference;

    iput-object p4, p0, Lcom/android/tools/r8/Q3;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/Q3;->b:Lcom/android/tools/r8/m;

    iget-object v1, p0, Lcom/android/tools/r8/Q3;->c:Lcom/android/tools/r8/l;

    iget-object v2, p0, Lcom/android/tools/r8/Q3;->d:Lcom/android/tools/r8/references/MethodReference;

    iget-object v3, p0, Lcom/android/tools/r8/Q3;->e:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/AssertionsConfiguration$Builder;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/m;->a(Lcom/android/tools/r8/l;Lcom/android/tools/r8/references/MethodReference;Ljava/lang/String;Lcom/android/tools/r8/AssertionsConfiguration$Builder;)Lcom/android/tools/r8/AssertionsConfiguration;

    move-result-object p1

    return-object p1
.end method
