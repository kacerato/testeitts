.class public final synthetic Lcom/android/tools/r8/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/k2;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/k2;->b:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/x4;

    invoke-static {v0, p1}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->h(Ljava/util/Set;Lcom/android/tools/r8/graph/x4;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
