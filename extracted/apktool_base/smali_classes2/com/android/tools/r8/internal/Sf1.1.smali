.class public final synthetic Lcom/android/tools/r8/internal/Sf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/jg;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/jg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sf1;->b:Lcom/android/tools/r8/internal/jg;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sf1;->b:Lcom/android/tools/r8/internal/jg;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jg;->a(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
