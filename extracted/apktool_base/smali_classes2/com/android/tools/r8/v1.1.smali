.class public final synthetic Lcom/android/tools/r8/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/D8Command;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/D8Command;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/v1;->b:Lcom/android/tools/r8/D8Command;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/v1;->b:Lcom/android/tools/r8/D8Command;

    check-cast p1, Lcom/android/tools/r8/StringConsumer;

    invoke-static {v0, p1}, Lcom/android/tools/r8/D8Command;->i(Lcom/android/tools/r8/D8Command;Lcom/android/tools/r8/StringConsumer;)Lcom/android/tools/r8/naming/Q;

    move-result-object p1

    return-object p1
.end method
