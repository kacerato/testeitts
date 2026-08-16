.class public Lcom/android/tools/r8/threading/providers/blocking/ThreadingModuleBlockingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/threading/ThreadingModuleProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/tools/r8/threading/ThreadingModule;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Lr0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Lr0;-><init>()V

    return-object v0
.end method
