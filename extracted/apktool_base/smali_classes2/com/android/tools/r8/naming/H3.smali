.class public final synthetic Lcom/android/tools/r8/naming/H3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/M0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/M0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/H3;->b:Lcom/android/tools/r8/naming/M0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/H3;->b:Lcom/android/tools/r8/naming/M0;

    check-cast p1, Lcom/android/tools/r8/naming/k$b;

    invoke-static {v0, p1}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/k$b;)Z

    move-result p1

    return p1
.end method
