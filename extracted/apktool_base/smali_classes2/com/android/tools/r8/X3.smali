.class public final synthetic Lcom/android/tools/r8/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/k0;

.field public final synthetic c:Lcom/android/tools/r8/R8Command$Builder;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/k0;Lcom/android/tools/r8/R8Command$Builder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/X3;->b:Lcom/android/tools/r8/k0;

    iput-object p2, p0, Lcom/android/tools/r8/X3;->c:Lcom/android/tools/r8/R8Command$Builder;

    iput-boolean p3, p0, Lcom/android/tools/r8/X3;->d:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/X3;->b:Lcom/android/tools/r8/k0;

    iget-object v1, p0, Lcom/android/tools/r8/X3;->c:Lcom/android/tools/r8/R8Command$Builder;

    iget-boolean v2, p0, Lcom/android/tools/r8/X3;->d:Z

    check-cast p1, Lcom/android/tools/r8/FeatureSplit$Builder;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/o0;->a(Lcom/android/tools/r8/k0;Lcom/android/tools/r8/R8Command$Builder;ZLcom/android/tools/r8/FeatureSplit$Builder;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object p1

    return-object p1
.end method
