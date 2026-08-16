.class public final synthetic Lcom/android/tools/r8/shaking/M8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/M8;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/M8;->b:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
