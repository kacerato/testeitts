.class public final synthetic Lcom/android/tools/r8/startup/diagnostic/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/startup/diagnostic/c;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/startup/diagnostic/c;->b:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;->c(Ljava/lang/StringBuilder;Lcom/android/tools/r8/graph/A2;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method
