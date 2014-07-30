WC := $(shell pwd)


SCAN_OPT += -enable-checker alpha.core.BoolAssignment       
SCAN_OPT += -enable-checker alpha.core.CastSize             
SCAN_OPT += -enable-checker alpha.core.CastToStruct         
SCAN_OPT += -enable-checker alpha.core.FixedAddr            
SCAN_OPT += -enable-checker alpha.core.IdenticalExpr        
SCAN_OPT += -enable-checker alpha.core.PointerArithm        
SCAN_OPT += -enable-checker alpha.core.PointerSub           
SCAN_OPT += -enable-checker alpha.core.SizeofPtr            
SCAN_OPT += -enable-checker alpha.cplusplus.NewDeleteLeaks  
SCAN_OPT += -enable-checker alpha.cplusplus.VirtualCall     
SCAN_OPT += -enable-checker alpha.deadcode.UnreachableCode  
SCAN_OPT += -enable-checker alpha.osx.cocoa.Dealloc         
SCAN_OPT += -enable-checker alpha.osx.cocoa.DirectIvarAssignment
SCAN_OPT += -enable-checker alpha.osx.cocoa.DirectIvarAssignmentForAnnotatedFunctions
SCAN_OPT += -enable-checker alpha.osx.cocoa.InstanceVariableInvalidation
SCAN_OPT += -enable-checker alpha.osx.cocoa.MissingInvalidationMethod
SCAN_OPT += -enable-checker alpha.security.ArrayBound
SCAN_OPT += -enable-checker alpha.security.ArrayBoundV2
SCAN_OPT += -enable-checker alpha.security.MallocOverflow
SCAN_OPT += -enable-checker alpha.security.ReturnPtrRange
SCAN_OPT += -enable-checker alpha.security.taint.TaintPropagation
SCAN_OPT += -enable-checker alpha.unix.Chroot               
SCAN_OPT += -enable-checker alpha.unix.MallocWithAnnotations
SCAN_OPT += -enable-checker alpha.unix.PthreadLock          
SCAN_OPT += -enable-checker alpha.unix.SimpleStream         
SCAN_OPT += -enable-checker alpha.unix.Stream               
SCAN_OPT += -enable-checker alpha.unix.cstring.BufferOverlap
SCAN_OPT += -enable-checker alpha.unix.cstring.NotNullTerminated
SCAN_OPT += -enable-checker alpha.unix.cstring.OutOfBounds  
SCAN_OPT += -enable-checker core.CallAndMessage             
SCAN_OPT += -enable-checker core.DivideZero                 
SCAN_OPT += -enable-checker core.DynamicTypePropagation     
SCAN_OPT += -enable-checker core.NonNullParamChecker        
SCAN_OPT += -enable-checker core.NullDereference            
SCAN_OPT += -enable-checker core.StackAddressEscape         
SCAN_OPT += -enable-checker core.UndefinedBinaryOperatorResult
SCAN_OPT += -enable-checker core.VLASize                    
SCAN_OPT += -enable-checker core.builtin.BuiltinFunctions   
SCAN_OPT += -enable-checker core.builtin.NoReturnFunctions  
SCAN_OPT += -enable-checker core.uninitialized.ArraySubscript
SCAN_OPT += -enable-checker core.uninitialized.Assign       
SCAN_OPT += -enable-checker core.uninitialized.Branch       
SCAN_OPT += -enable-checker core.uninitialized.CapturedBlockVariable
SCAN_OPT += -enable-checker core.uninitialized.UndefReturn  
SCAN_OPT += -enable-checker cplusplus.NewDelete             
SCAN_OPT += -enable-checker deadcode.DeadStores             
SCAN_OPT += -enable-checker debug.ConfigDumper              
SCAN_OPT += -enable-checker debug.DumpCFG                   
SCAN_OPT += -enable-checker debug.DumpCallGraph             
SCAN_OPT += -enable-checker debug.DumpCalls                 
SCAN_OPT += -enable-checker debug.DumpDominators            
SCAN_OPT += -enable-checker debug.DumpLiveVars              
SCAN_OPT += -enable-checker debug.DumpTraversal             
SCAN_OPT += -enable-checker debug.ExprInspection            
SCAN_OPT += -enable-checker debug.Stats                     
SCAN_OPT += -enable-checker debug.TaintTest                 
SCAN_OPT += -enable-checker debug.ViewCFG                   
SCAN_OPT += -enable-checker debug.ViewCallGraph             
SCAN_OPT += -enable-checker debug.ViewExplodedGraph         
SCAN_OPT += -enable-checker llvm.Conventions                
SCAN_OPT += -enable-checker osx.API                         
SCAN_OPT += -enable-checker osx.SecKeychainAPI              
SCAN_OPT += -enable-checker osx.cocoa.AtSync                
SCAN_OPT += -enable-checker osx.cocoa.ClassRelease          
SCAN_OPT += -enable-checker osx.cocoa.IncompatibleMethodTypes
SCAN_OPT += -enable-checker osx.cocoa.Loops                 
SCAN_OPT += -enable-checker osx.cocoa.MissingSuperCall      
SCAN_OPT += -enable-checker osx.cocoa.NSAutoreleasePool     
SCAN_OPT += -enable-checker osx.cocoa.NSError               
SCAN_OPT += -enable-checker osx.cocoa.NilArg                
SCAN_OPT += -enable-checker osx.cocoa.NonNilReturnValue     
SCAN_OPT += -enable-checker osx.cocoa.RetainCount           
SCAN_OPT += -enable-checker osx.cocoa.SelfInit              
SCAN_OPT += -enable-checker osx.cocoa.UnusedIvars           
SCAN_OPT += -enable-checker osx.cocoa.VariadicMethodTypes   
SCAN_OPT += -enable-checker osx.coreFoundation.CFError      
SCAN_OPT += -enable-checker osx.coreFoundation.CFNumber     
SCAN_OPT += -enable-checker osx.coreFoundation.CFRetainRelease
SCAN_OPT += -enable-checker osx.coreFoundation.containers.OutOfBounds
SCAN_OPT += -enable-checker osx.coreFoundation.containers.PointerSizedValues
SCAN_OPT += -enable-checker security.FloatLoopCounter       
SCAN_OPT += -enable-checker security.insecureAPI.UncheckedReturn
SCAN_OPT += -enable-checker security.insecureAPI.getpw      
SCAN_OPT += -enable-checker security.insecureAPI.gets       
SCAN_OPT += -enable-checker security.insecureAPI.mkstemp    
SCAN_OPT += -enable-checker security.insecureAPI.mktemp     
SCAN_OPT += -enable-checker security.insecureAPI.rand       
SCAN_OPT += -enable-checker security.insecureAPI.strcpy     
SCAN_OPT += -enable-checker security.insecureAPI.vfork      
SCAN_OPT += -enable-checker unix.API                        
SCAN_OPT += -enable-checker unix.Malloc                     
SCAN_OPT += -enable-checker unix.MallocSizeof               
SCAN_OPT += -enable-checker unix.MismatchedDeallocator      
SCAN_OPT += -enable-checker unix.cstring.BadSizeArg         
SCAN_OPT += -enable-checker unix.cstring.NullArg            




.PHONY: scan-build pre-build bitcoin 
scan-build:pre-build bitcoin
	cd $(WC)/bitcoin && scan-build -o $(WC)/obj-bitcoin  -k -V $(SCAN_OPT) make

pre-build:
	mkdir -p $(WC)/obj-bitcoin
	
bitcoin:
	cd $(WC)/bitcoin && ./autogen.sh
	cd $(WC)/bitcoin && ./configure CC=clang CXX=clang++ --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
