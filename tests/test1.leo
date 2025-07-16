// The 'test1' test program.
import hello.aleo;
program test1.aleo { 
    
    @test
    transition test_it() {    // 1m 47s       2 tests: 1m 56s    3 tests: 2m 12s 
        let result: u32 = hello.aleo/main(1u32, 2u32);
        assert_eq(result, 3u32);
    }

    @test
    @should_fail
    transition do_nothing() {    // 1m 32s
        let result: u32 = hello.aleo/main(2u32, 3u32);
        assert_eq(result, 3u32);
    }

    
    @test
    transition do_something() {  // 1m 20s
        let a: u32 = 4 * 2;
    }

}
