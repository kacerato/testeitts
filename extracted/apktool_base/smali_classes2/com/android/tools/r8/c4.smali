.class public final synthetic Lcom/android/tools/r8/c4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/s0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/c4;->b:Lcom/android/tools/r8/s0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/c4;->b:Lcom/android/tools/r8/s0;

    check-cast p1, Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/s0;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/ProgramResourceProvider;

    move-result-object p1

    return-object p1
.end method
