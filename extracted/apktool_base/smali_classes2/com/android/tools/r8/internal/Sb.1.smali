.class public abstract Lcom/android/tools/r8/internal/Sb;
.super Lcom/android/tools/r8/internal/Pb;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Pb;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sb;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sb;->b:Ljava/lang/String;

    return-object v0
.end method
