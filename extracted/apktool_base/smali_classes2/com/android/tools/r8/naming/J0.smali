.class public final Lcom/android/tools/r8/naming/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/MapIdEnvironment;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/naming/J0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMapHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/J0;->a:Ljava/lang/String;

    return-object v0
.end method
