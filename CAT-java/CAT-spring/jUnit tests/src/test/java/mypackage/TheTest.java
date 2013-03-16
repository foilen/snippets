// ...

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration()
public class TheTest {
    @Autowired
    private ABean myBean;

    @Test
    public void testUneMethode() {
        // Do you tests with Autowired classes
    }
}