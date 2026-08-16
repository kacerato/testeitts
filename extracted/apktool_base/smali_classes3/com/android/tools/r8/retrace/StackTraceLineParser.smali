.class public interface abstract Lcom/android/tools/r8/retrace/StackTraceLineParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static createRegularExpressionParser(Ljava/lang/String;)Lcom/android/tools/r8/retrace/StackTraceLineParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/tools/r8/retrace/StackTraceLineParser<",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/internal/Vn0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/jo0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/jo0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TST;"
        }
    .end annotation
.end method
