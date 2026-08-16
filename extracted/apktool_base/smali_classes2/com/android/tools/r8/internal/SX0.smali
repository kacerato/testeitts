.class public final synthetic Lcom/android/tools/r8/internal/SX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/SX0;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/SX0;->b:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/U50;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1
.end method
