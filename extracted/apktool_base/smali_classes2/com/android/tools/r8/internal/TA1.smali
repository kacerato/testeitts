.class public final synthetic Lcom/android/tools/r8/internal/TA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TA1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/TA1;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/ng0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
