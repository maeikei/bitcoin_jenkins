WC := $(shell pwd)

SCAN_CHECKER += -enable-checker alpha.core.BoolAssignment       
SCAN_CHECKER += -enable-checker alpha.core.CastSize             
SCAN_CHECKER += -enable-checker alpha.core.CastToStruct         
SCAN_CHECKER += -enable-checker alpha.core.FixedAddr            
SCAN_CHECKER += -enable-checker alpha.core.IdenticalExpr        
SCAN_CHECKER += -enable-checker alpha.core.PointerArithm        
SCAN_CHECKER += -enable-checker alpha.core.PointerSub           
SCAN_CHECKER += -enable-checker alpha.core.SizeofPtr            
SCAN_CHECKER += -enable-checker alpha.cplusplus.NewDeleteLeaks  
SCAN_CHECKER += -enable-checker alpha.cplusplus.VirtualCall     
SCAN_CHECKER += -enable-checker alpha.deadcode.UnreachableCode  
SCAN_CHECKER += -enable-checker alpha.osx.cocoa.Dealloc         
SCAN_CHECKER += -enable-checker alpha.osx.cocoa.DirectIvarAssignment
SCAN_CHECKER += -enable-checker alpha.osx.cocoa.DirectIvarAssignmentForAnnotatedFunctions
SCAN_CHECKER += -enable-checker alpha.osx.cocoa.InstanceVariableInvalidation
SCAN_CHECKER += -enable-checker alpha.osx.cocoa.MissingInvalidationMethod
SCAN_CHECKER += -enable-checker alpha.security.ArrayBound
SCAN_CHECKER += -enable-checker alpha.security.ArrayBoundV2
SCAN_CHECKER += -enable-checker alpha.security.MallocOverflow
SCAN_CHECKER += -enable-checker alpha.security.ReturnPtrRange
SCAN_CHECKER += -enable-checker alpha.security.taint.TaintPropagation
SCAN_CHECKER += -enable-checker alpha.unix.Chroot               
SCAN_CHECKER += -enable-checker alpha.unix.MallocWithAnnotations
SCAN_CHECKER += -enable-checker alpha.unix.PthreadLock          
SCAN_CHECKER += -enable-checker alpha.unix.SimpleStream         
SCAN_CHECKER += -enable-checker alpha.unix.Stream               
SCAN_CHECKER += -enable-checker alpha.unix.cstring.BufferOverlap
SCAN_CHECKER += -enable-checker alpha.unix.cstring.NotNullTerminated
SCAN_CHECKER += -enable-checker alpha.unix.cstring.OutOfBounds  
SCAN_CHECKER += -enable-checker core.CallAndMessage             
SCAN_CHECKER += -enable-checker core.DivideZero                 
SCAN_CHECKER += -enable-checker core.DynamicTypePropagation     
SCAN_CHECKER += -enable-checker core.NonNullParamChecker        
SCAN_CHECKER += -enable-checker core.NullDereference            
SCAN_CHECKER += -enable-checker core.StackAddressEscape         
SCAN_CHECKER += -enable-checker core.UndefinedBinaryOperatorResult
SCAN_CHECKER += -enable-checker core.VLASize                    
SCAN_CHECKER += -enable-checker core.builtin.BuiltinFunctions   
SCAN_CHECKER += -enable-checker core.builtin.NoReturnFunctions  
SCAN_CHECKER += -enable-checker core.uninitialized.ArraySubscript
SCAN_CHECKER += -enable-checker core.uninitialized.Assign       
SCAN_CHECKER += -enable-checker core.uninitialized.Branch       
SCAN_CHECKER += -enable-checker core.uninitialized.CapturedBlockVariable
SCAN_CHECKER += -enable-checker core.uninitialized.UndefReturn  
SCAN_CHECKER += -enable-checker cplusplus.NewDelete             
SCAN_CHECKER += -enable-checker deadcode.DeadStores             
SCAN_CHECKER += -enable-checker debug.ConfigDumper              
SCAN_CHECKER += -enable-checker debug.DumpCFG                   
SCAN_CHECKER += -enable-checker debug.DumpCallGraph             
SCAN_CHECKER += -enable-checker debug.DumpCalls                 
SCAN_CHECKER += -enable-checker debug.DumpDominators            
SCAN_CHECKER += -enable-checker debug.DumpLiveVars              
SCAN_CHECKER += -enable-checker debug.DumpTraversal             
SCAN_CHECKER += -enable-checker debug.ExprInspection            
SCAN_CHECKER += -enable-checker debug.Stats                     
SCAN_CHECKER += -enable-checker debug.TaintTest                 
SCAN_CHECKER += -enable-checker debug.ViewCFG                   
SCAN_CHECKER += -enable-checker debug.ViewCallGraph             
SCAN_CHECKER += -enable-checker debug.ViewExplodedGraph         
SCAN_CHECKER += -enable-checker llvm.Conventions                
SCAN_CHECKER += -enable-checker osx.API                         
SCAN_CHECKER += -enable-checker osx.SecKeychainAPI              
SCAN_CHECKER += -enable-checker osx.cocoa.AtSync                
SCAN_CHECKER += -enable-checker osx.cocoa.ClassRelease          
SCAN_CHECKER += -enable-checker osx.cocoa.IncompatibleMethodTypes
SCAN_CHECKER += -enable-checker osx.cocoa.Loops                 
SCAN_CHECKER += -enable-checker osx.cocoa.MissingSuperCall      
SCAN_CHECKER += -enable-checker osx.cocoa.NSAutoreleasePool     
SCAN_CHECKER += -enable-checker osx.cocoa.NSError               
SCAN_CHECKER += -enable-checker osx.cocoa.NilArg                
SCAN_CHECKER += -enable-checker osx.cocoa.NonNilReturnValue     
SCAN_CHECKER += -enable-checker osx.cocoa.RetainCount           
SCAN_CHECKER += -enable-checker osx.cocoa.SelfInit              
SCAN_CHECKER += -enable-checker osx.cocoa.UnusedIvars           
SCAN_CHECKER += -enable-checker osx.cocoa.VariadicMethodTypes   
SCAN_CHECKER += -enable-checker osx.coreFoundation.CFError      
SCAN_CHECKER += -enable-checker osx.coreFoundation.CFNumber     
SCAN_CHECKER += -enable-checker osx.coreFoundation.CFRetainRelease
SCAN_CHECKER += -enable-checker osx.coreFoundation.containers.OutOfBounds
SCAN_CHECKER += -enable-checker osx.coreFoundation.containers.PointerSizedValues
SCAN_CHECKER += -enable-checker security.FloatLoopCounter       
SCAN_CHECKER += -enable-checker security.insecureAPI.UncheckedReturn
SCAN_CHECKER += -enable-checker security.insecureAPI.getpw      
SCAN_CHECKER += -enable-checker security.insecureAPI.gets       
SCAN_CHECKER += -enable-checker security.insecureAPI.mkstemp    
SCAN_CHECKER += -enable-checker security.insecureAPI.mktemp     
SCAN_CHECKER += -enable-checker security.insecureAPI.rand       
SCAN_CHECKER += -enable-checker security.insecureAPI.strcpy     
SCAN_CHECKER += -enable-checker security.insecureAPI.vfork      
SCAN_CHECKER += -enable-checker unix.API                        
SCAN_CHECKER += -enable-checker unix.Malloc                     
SCAN_CHECKER += -enable-checker unix.MallocSizeof               
SCAN_CHECKER += -enable-checker unix.MismatchedDeallocator      
SCAN_CHECKER += -enable-checker unix.cstring.BadSizeArg         
SCAN_CHECKER += -enable-checker unix.cstring.NullArg            

            




.PHONY: scan-build pre-build bitcoin 
scan-build:pre-build bitcoin
	cd $(WC)/bitcoin && scan-build -o $(WC)/obj-bitcoin  -stats -k $(SCAN_CHECKER) make

pre-build:
	mkdir -p $(WC)/reports
	
bitcoin:
	cd $(WC)/bitcoin && ./autogen.sh
	cd $(WC)/bitcoin && ./configure CC=clang CXX=clang++ --with-incompatible-bdb \
	--with-boost-libdir=/usr/lib/arm-linux-gnueabihf\
	
	
