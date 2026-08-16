.class public final synthetic Lcom/android/tools/r8/shaking/Hf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/H1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Hf;->b:Lcom/android/tools/r8/shaking/H1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Hf;->b:Lcom/android/tools/r8/shaking/H1;

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method
