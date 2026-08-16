.class public Lorg/openjdk/tools/javah/Util$Exit;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javah/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exit"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5fa9565a2467b15L


# instance fields
.field public final cause:Ljava/lang/Throwable;

.field public final exitValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javah/Util$Exit;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 3
    iput p1, p0, Lorg/openjdk/tools/javah/Util$Exit;->exitValue:I

    .line 4
    iput-object p2, p0, Lorg/openjdk/tools/javah/Util$Exit;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javah/Util$Exit;)V
    .locals 1

    .line 5
    iget v0, p1, Lorg/openjdk/tools/javah/Util$Exit;->exitValue:I

    iget-object p1, p1, Lorg/openjdk/tools/javah/Util$Exit;->cause:Ljava/lang/Throwable;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javah/Util$Exit;-><init>(ILjava/lang/Throwable;)V

    return-void
.end method
