.class public final synthetic Lcom/android/tools/r8/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/R8Command$Builder;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/z3;->b:Lcom/android/tools/r8/R8Command$Builder;

    iput-object p2, p0, Lcom/android/tools/r8/z3;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/z3;->d:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/z3;->b:Lcom/android/tools/r8/R8Command$Builder;

    iget-object v1, p0, Lcom/android/tools/r8/z3;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/z3;->d:Lcom/android/tools/r8/origin/Origin;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/R8Command$Builder;->u(Lcom/android/tools/r8/R8Command$Builder;Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method
