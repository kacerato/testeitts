.class public final synthetic Lcom/android/tools/r8/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ParseFlagPrinter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ParseFlagPrinter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/A2;->b:Lcom/android/tools/r8/ParseFlagPrinter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/A2;->b:Lcom/android/tools/r8/ParseFlagPrinter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->b(Lcom/android/tools/r8/ParseFlagPrinter;Ljava/lang/String;)V

    return-void
.end method
