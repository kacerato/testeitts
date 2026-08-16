.class public Lcom/android/tools/r8/ResourceException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final b:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/ResourceException;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/ResourceException;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/ResourceException;->b:Lcom/android/tools/r8/origin/Origin;

    return-void
.end method


# virtual methods
.method public getOrigin()Lcom/android/tools/r8/origin/Origin;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/ResourceException;->b:Lcom/android/tools/r8/origin/Origin;

    return-object v0
.end method
