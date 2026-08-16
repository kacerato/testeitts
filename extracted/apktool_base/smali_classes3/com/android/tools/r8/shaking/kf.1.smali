.class public final synthetic Lcom/android/tools/r8/shaking/kf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/IC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/kf;->b:Lcom/android/tools/r8/internal/IC;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/kf;->b:Lcom/android/tools/r8/internal/IC;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method
